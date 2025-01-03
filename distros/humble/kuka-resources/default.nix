
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, urdf, xacro }:
buildRosPackage {
  pname = "ros-humble-kuka-resources";
  version = "0.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_resources/0.9.0-2.tar.gz";
    name = "0.9.0-2.tar.gz";
    sha256 = "2723034c267b07e88d78fb6982126722d7f1e624e879caa6b2a86b271a91544b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This package contains common urdf / xacro resources used by KUKA robot support packages within the ROS-Industrial program.";
    license = with lib.licenses; [ asl20 ];
  };
}
