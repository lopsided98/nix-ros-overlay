
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake-modules, roslib, dynamic-reconfigure, catkin }:
buildRosPackage {
  pname = "ros-kinetic-mini-maxwell";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/mini_maxwell/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "c056847379ff23803dd59df66a4c03501157b059d76ed1bac821347bd2ca0fe6";
  };

  buildType = "catkin";
  buildInputs = [ cmake-modules roslib dynamic-reconfigure ];
  propagatedBuildInputs = [ dynamic-reconfigure ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''mini_maxwell'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
