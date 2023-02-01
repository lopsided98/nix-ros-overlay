
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, automake, catkin, cmake, doxygen, libtool, omniorb, pkg-config, python, util-linux }:
buildRosPackage {
  pname = "ros-melodic-openrtm-aist";
  version = "1.1.2-r7";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "openrtm_aist-release";
        rev = "release/melodic/openrtm_aist/1.1.2-7";
        sha256 = "sha256-6SKhRKgW8NBQoaSAp/NMq+1idlrxPOd+/HT/Ys6uQ9k=";
      };

  buildType = "cmake";
  buildInputs = [ automake cmake doxygen libtool pkg-config python ];
  propagatedBuildInputs = [ catkin omniorb util-linux ];
  nativeBuildInputs = [ automake cmake libtool pkg-config ];

  meta = {
    description = ''<p>This package represents <a href="http://openrtm.org/">OpenRTM-aist</a> that's built within ROS eco system. Although being ROS-agnostic by itself, you can use this via ROS together with the packages in <a href="http://www.ros.org/wiki/rtmros_common">rtmros_common</a> that bridge between two framework.</p>
   <p><i>OpenRTM-aist is an <a href="http://ieeexplore.ieee.org/xpl/login.jsp?tp=&amp;arnumber=1545521&amp;url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F10375%2F32977%2F01545521.pdf%3Farnumber%3D1545521">RT-Middleware</a>-baseed, component-oriented software platform to robotics development that is made and maintained in AIST (National Institute of Advanced Industrial Science and Technology) in Japan </i> (<a href="http://openrtm.org/openrtm/en/content/introduction-0">excerpts from here</a>)</p>

   <p>Its development is happening at <a href="http://www.openrtm.org/pub/OpenRTM-aist/">openrtm.org/pub/OpenRTM-aist</a>. The repository listed below is where the development of its ROS wrapper happening.</p>'';
    license = with lib.licenses; [ "EPL" ];
  };
}
