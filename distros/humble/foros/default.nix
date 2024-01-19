
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-common, foros-msgs, leveldb, rclcpp }:
buildRosPackage {
  pname = "ros-humble-foros";
  version = "0.4.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/foros-release/archive/release/humble/foros/0.4.1-2.tar.gz";
    name = "0.4.1-2.tar.gz";
    sha256 = "95889bbf2fa021efe446815a26ac02a63dfd366a0c168952c4345ab50df7928b";
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
