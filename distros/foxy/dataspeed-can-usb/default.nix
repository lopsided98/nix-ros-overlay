
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, can-msgs, lusb, rclcpp, rclcpp-components, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-dataspeed-can-usb";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dataspeed_can-release/archive/release/foxy/dataspeed_can_usb/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "251aea36db8f3e5714fdca9e73cf90500bf65feef530bef8612278cc9d8ae70c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ can-msgs lusb rclcpp rclcpp-components std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Driver to interface with the Dataspeed Inc. USB CAN Tool'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
