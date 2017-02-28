#!/bin/sh
exec scala -savecompiled  "$0" "$@"
!#

import scala.sys.process._

while (true) {
  killIfNeed(getFreeMem)
  processException(sleep())
}

def getFreeMem(): Integer = {
  val res = {
    "free -m" !!
  }

  val strings = res.split("\\r?\\n")(1).split(" ").filter(x => !"".equals(x))
  val freeMem = try {
    strings(3).toInt
  } catch {
    case x: Any => 0
  }

  freeMem
}

def killIfNeed(freeMem: Integer): Unit = {
  println(freeMem)
  //  if (freeMem < 3000) {
//  if (freeMem < 200) {
//    processException({
//      //      "killall firefox" !!
//      "killall chromium-browser" !!
//    })
//  }

}

def processException[R](block: => R) = {
  try {
    block
  } catch {
    case x: Any => println(x.getMessage)
  }
}


def sleep(): Unit = {
  Thread.sleep(1000)
}


