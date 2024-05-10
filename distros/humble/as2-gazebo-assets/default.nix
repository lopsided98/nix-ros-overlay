
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-copyright, ament-flake8, ament-pep257, as2-core, geometry-msgs, python3Packages, pythonPackages, rclcpp, ros-gz-bridge, ros-gz-sim, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-gazebo-assets";
  version = "1.0.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_gazebo_assets/1.0.9-1.tar.gz";
    name = "1.0.9-1.tar.gz";
    sha256 = "1868a9f5cbbf15c4e2e006665ed01aa9b75b36da92313a601e7d94fd628a0060";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ as2-core geometry-msgs python3Packages.jinja2 python3Packages.pydantic rclcpp ros-gz-bridge ros-gz-sim sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];

  meta = {
    description = "Ignition Gazebo resources";
    license = with lib.licenses; [ bsd3 ];
  };
}
