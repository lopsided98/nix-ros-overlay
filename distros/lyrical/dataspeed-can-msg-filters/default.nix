
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-lyrical-dataspeed-can-msg-filters";
  version = "2.0.8-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/lyrical/dataspeed_can_msg_filters/2.0.8-1.tar.gz";
    name = "2.0.8-1.tar.gz";
    sha256 = "fa48e11bf31095e30a634813ae1e80bf6e8baf9a4ac4a7a3ceb6bf920c5145e1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Time synchronize multiple CAN messages to get a single callback";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
