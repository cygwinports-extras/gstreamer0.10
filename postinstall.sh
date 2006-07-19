#!/bin/sh
prefix=/usr
bindir=${prefix}/bin
slot=0.10
rank=10

/usr/sbin/update-alternatives \
	--install ${bindir}/gst-feedback   gst-feedback   ${bindir}/gst-feedback-${slot} ${rank} \
	--slave	  ${bindir}/gst-inspect    gst-inspect    ${bindir}/gst-inspect-${slot}.exe \
	--slave	  ${bindir}/gst-launch     gst-launch     ${bindir}/gst-launch-${slot}.exe \
	--slave	  ${bindir}/gst-typefind   gst-typefind   ${bindir}/gst-typefind-${slot}.exe \
	--slave	  ${bindir}/gst-xmlinspect gst-xmlinspect ${bindir}/gst-xmlinspect-${slot}.exe \
	--slave	  ${bindir}/gst-xmllaunch  gst-xmllaunch  ${bindir}/gst-xmllaunch-${slot}.exe
