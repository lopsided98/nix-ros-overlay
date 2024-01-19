
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, rclcpp }:
buildRosPackage {
  pname = "ros-humble-dataspeed-can-msg-filters";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/humble/dataspeed_can_msg_filters/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "c7e15db8e292a8207dedafa7b7ff990a3e12e77561b41625f8961603b67187ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Time synchronize multiple CAN messages to get a single callback'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
