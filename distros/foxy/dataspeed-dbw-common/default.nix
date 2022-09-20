
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-dataspeed-dbw-common";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/DataspeedInc-release/dbw_ros-release/archive/release/foxy/dataspeed_dbw_common/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "692bc40ca8b541a46f33ecba7116dfa75aabcdcb14374ffe122df6baa5ce7eab";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Common interfaces for drive-by-wire.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
