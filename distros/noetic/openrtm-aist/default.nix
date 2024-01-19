
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automake, catkin, cmake, doxygen, libtool, omniorb, pkg-config, pythonPackages, util-linux }:
buildRosPackage {
  pname = "ros-noetic-openrtm-aist";
  version = "1.1.2-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/openrtm_aist-release/archive/release/noetic/openrtm_aist/1.1.2-4.tar.gz";
    name = "1.1.2-4.tar.gz";
    sha256 = "61a7a22fbfbf87fff5685a08bde398fc1523e543865f24fe3bacc6f83afc341b";
  };

  buildType = "cmake";
  buildInputs = [ automake cmake doxygen libtool pkg-config pythonPackages.python ];
  propagatedBuildInputs = [ catkin omniorb util-linux ];
  nativeBuildInputs = [ automake cmake libtool pkg-config ];

  meta = {
    description = ''<p>This package represents <a href="http://openrtm.org/">OpenRTM-aist</a> that's built within ROS eco system. Although being ROS-agnostic by itself, you can use this via ROS together with the packages in <a href="http://www.ros.org/wiki/rtmros_common">rtmros_common</a> that bridge between two framework.</p>
   <p><i>OpenRTM-aist is an <a href="http://ieeexplore.ieee.org/xpl/login.jsp?tp=&amp;arnumber=1545521&amp;url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F10375%2F32977%2F01545521.pdf%3Farnumber%3D1545521">RT-Middleware</a>-baseed, component-oriented software platform to robotics development that is made and maintained in AIST (National Institute of Advanced Industrial Science and Technology) in Japan </i> (<a href="http://openrtm.org/openrtm/en/content/introduction-0">excerpts from here</a>)</p>

   <p>Its development is happening at <a href="http://www.openrtm.org/pub/OpenRTM-aist/">openrtm.org/pub/OpenRTM-aist</a>. The repository listed below is where the development of its ROS wrapper happening.</p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
