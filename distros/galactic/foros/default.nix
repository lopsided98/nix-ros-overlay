
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-common, foros-msgs, leveldb, rclcpp }:
buildRosPackage {
  pname = "ros-galactic-foros";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/galactic/foros/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "f080dd2b80a2bbedf0de263e555c412a24fd6298f6a0bcccfc61baf21bcf2c97";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-common ];
  propagatedBuildInputs = [ foros-msgs leveldb rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Fail Over ROS framework'';
    license = with lib.licenses; [ asl20 ];
  };
}
