
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, libf2c, libpng12, boost, libxml2, pkg-config, doxygen, libjpeg, openrtm-aist, eigen, cmake, jython }:
buildRosPackage {
  pname = "ros-kinetic-openhrp3";
  version = "3.1.9-r3";

  src = fetchurl {
    url = https://github.com/tork-a/openhrp3-release/archive/release/kinetic/openhrp3/3.1.9-3.tar.gz;
    sha256 = "088129ba7f52bc58b011a0015d5f7a97b9f2b79489ab26aefb4e488035e772a0";
  };

  buildInputs = [ libf2c libpng12 boost libxml2 doxygen libjpeg openrtm-aist eigen jython ];
  propagatedBuildInputs = [ libf2c libpng12 boost libxml2 libjpeg openrtm-aist eigen jython ];
  nativeBuildInputs = [ cmake pkg-config ];

  meta = {
    description = ''<p>This package does not only wrap <a href="http://www.openrtp.jp/openhrp3/en/index.html">OpenHRP3</a> but actually provides the built artifact from the code from its <a href="https://openrtp.jp/svn/hrg/openhrp">mainstream repository</a>. Being ROS-agnostic by itself, you can also use this via ROS together with the packages in <a href="http://www.ros.org/wiki/rtmros_common">rtmros_common</a> that bridge between two framework.</p>
   <p><i>OpenHRP3 (Open Architecture Human-centered Robotics Platform version 3) is an integrated software platform for robot simulations and software developments. It allows the users to inspect an original robot model and control program by dynamics simulation. In addition, OpenHRP3 provides various software components and calculation libraries that can be used for robotics related software developments</i> (<a href="http://www.openrtp.jp/openhrp3/en/about.html">excerpts from here</a>). </p>
   <p>The package version number is synchronized to that of mainstream, based on <a href="http://code.google.com/p/rtm-ros-robotics/issues/detail?id=165#c5">this decision</a>.</p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
