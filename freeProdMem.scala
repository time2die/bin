#!/bin/sh
exec scala -savecompiled  "$0" "$@"
!#

import sys.process._


while (true) {
  val res = "ssh prod free -m" !!
  val a = res.split("\\r?\\n")
  val strings = a(1).split(" ").filter(x => !"".equals(x))
  val freeMem = strings(3)+"mb"

  import java.io._
  val pw = new PrintWriter(new File("/home/time2die/bin/mem.st" ))
  pw.write(freeMem)
  pw.close

  Thread.sleep(1000)
}
