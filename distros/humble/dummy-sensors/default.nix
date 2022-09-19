
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, ament-lint-common, rclcpp, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-dummy-sensors";
  version = "0.20.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/humble/dummy_sensors/0.20.2-1.tar.gz";
    name = "0.20.2-1.tar.gz";
    sha256 = "f35c1c379e07cdacd928993c48867920a40874a87b66836644a317cd84e4d86f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''dummy sensor nodes'';
    license = with lib.licenses; [ asl20 ];
  };
}
