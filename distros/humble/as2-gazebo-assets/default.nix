
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-cmake-python, ament-lint-auto, ament-lint-common, as2-core, backward-ros, geometry-msgs, python3Packages, rclcpp, ros-gz-bridge, ros-gz-sim, sensor-msgs, tf2-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-as2-gazebo-assets";
  version = "1.1.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aerostack2-release/archive/release/humble/as2_gazebo_assets/1.1.2-2.tar.gz";
    name = "1.1.2-2.tar.gz";
    sha256 = "b1df210958fc45042dbcc6d267b391c0fe9ff16fbdd7e182cd4936eea4df2da2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];
  checkInputs = [ ament-lint-auto ament-lint-common python3Packages.pytest ];
  propagatedBuildInputs = [ as2-core backward-ros geometry-msgs python3Packages.jinja2 python3Packages.pydantic rclcpp ros-gz-bridge ros-gz-sim sensor-msgs tf2-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ament-cmake-pytest ament-cmake-python ];

  meta = {
    description = "Ignition Gazebo resources";
    license = with lib.licenses; [ bsd3 ];
  };
}
