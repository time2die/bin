#!/bin/sh
exec scala -savecompiled  "$0" "$@"
!#

import java.io._
import scala.sys.process._

while (true) {
  try {
    getDataAndWrite
  } catch {
    case x: Any => println(x.getMessage)
  }
}

def getDataAndWrite() {
  val res = {
    "ssh prod free -m" !!
  }
  val strings = res.split("\\r?\\n")(1).split(" ").filter(x => !"".equals(x))
  val freeMem = strings(3) + "mb"
  val pw = new PrintWriter(new File("/home/time2die/bin/mem.st"))
  pw.write(freeMem)
  pw.close
  Thread.sleep(1000)
}
