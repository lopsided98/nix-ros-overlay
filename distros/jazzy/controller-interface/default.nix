
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gen-version-h, ament-cmake-gmock, hardware-interface, rclcpp-lifecycle, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-controller-interface";
  version = "4.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/jazzy/controller_interface/4.14.0-1.tar.gz";
    name = "4.14.0-1.tar.gz";
    sha256 = "1f1d3392b8426ae78e4134baa1da13a69e05ed84256c4fb34763d4792f3bed66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-gen-version-h sensor-msgs ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ hardware-interface rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ament-cmake-gen-version-h ];

  meta = {
    description = "Description of controller_interface";
    license = with lib.licenses; [ asl20 ];
  };
}
