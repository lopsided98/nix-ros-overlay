
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, crane-plus-control, crane-plus-description, crane-plus-examples, crane-plus-gazebo, crane-plus-moveit-config }:
buildRosPackage {
  pname = "ros-foxy-crane-plus";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/crane_plus-release/archive/release/foxy/crane_plus/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "62208f3af5c1a99c12b7153d15a1eef0b42d8c377dd2fddba05eaae9c31cc357";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ crane-plus-control crane-plus-description crane-plus-examples crane-plus-gazebo crane-plus-moveit-config ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS 2 package suite of CRANE+V2'';
    license = with lib.licenses; [ asl20 ];
  };
}
