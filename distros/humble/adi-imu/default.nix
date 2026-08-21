
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-copyright, ament-lint-auto, ament-pep257, builtin-interfaces, geometry-msgs, libiio, rclcpp, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-adi-imu";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/adi_imu-release/archive/release/humble/adi_imu/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "4caf13925869154605ab8f9327daee028eca7334bba9222751c16ddc7ce79ab0";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators ];
  checkInputs = [ ament-cmake-gtest ament-cmake-lint-cmake ament-cmake-xmllint ament-copyright ament-lint-auto ament-pep257 ];
  propagatedBuildInputs = [ ament-cmake builtin-interfaces geometry-msgs libiio rclcpp rosidl-default-runtime sensor-msgs std-msgs ];

  meta = {
    description = "Publisher for ADI IMUs";
    license = with lib.licenses; [ asl20 ];
  };
}
