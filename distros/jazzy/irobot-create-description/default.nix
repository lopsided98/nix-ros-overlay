
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-lint-auto, irobot-create-control, urdf, xacro }:
buildRosPackage {
  pname = "ros-jazzy-irobot-create-description";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_sim-release/archive/release/jazzy/irobot_create_description/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "3ed95f2ac416e7714e9ef3b9c46fb25c44ad72faa0bfe39aea305b351818e881";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-lint-auto ];
  propagatedBuildInputs = [ irobot-create-control urdf xacro ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides the model description for the iRobot(R) Create(R) 3 Educational Robot.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
