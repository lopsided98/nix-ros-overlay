
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, create-bringup, create-description, create-driver, create-msgs }:
buildRosPackage {
  pname = "ros-foxy-create-robot";
  version = "3.0.0-r1";

  src = fetchurl {
    url = "https://github.com/AutonomyLab/create_autonomy-release/archive/release/foxy/create_robot/3.0.0-1.tar.gz";
    name = "3.0.0-1.tar.gz";
    sha256 = "13dee62f907608a06db7980fda025bf7baca0808027a5bc397c5ada0ba8294ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ create-bringup create-description create-driver create-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS driver for iRobot's Create 1 and 2, based on the libcreate C++ library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
