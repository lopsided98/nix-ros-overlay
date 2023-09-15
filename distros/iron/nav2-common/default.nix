
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-python, launch, launch-ros, osrf-pycommon, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-iron-nav2-common";
  version = "1.2.2-r2";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/iron/nav2_common/1.2.2-2.tar.gz";
    name = "1.2.2-2.tar.gz";
    sha256 = "87008918ddef7596df86af7025beba37eec0da3cdd7543a105aaeb1c08348ab8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-python ];
  propagatedBuildInputs = [ ament-cmake-core launch launch-ros osrf-pycommon python3Packages.pyyaml rclpy ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = ''Common support functionality used throughout the navigation 2 stack'';
    license = with lib.licenses; [ asl20 ];
  };
}
