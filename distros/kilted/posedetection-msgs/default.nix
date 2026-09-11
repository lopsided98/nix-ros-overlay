
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, cv-bridge, geometry-msgs, message-filters, rclcpp, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-posedetection-msgs";
  version = "5.0.2-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_common_msgs-release/archive/release/kilted/posedetection_msgs/5.0.2-1.tar.gz";
    name = "5.0.2-1.tar.gz";
    sha256 = "ba15b7130350b93554f374cdf024334b8c322f4730de611b57aa67137f24186d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs message-filters rclcpp rosidl-default-runtime sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "posedetection_msgs provides messages and services to facilitate passing pose detection results and features.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
