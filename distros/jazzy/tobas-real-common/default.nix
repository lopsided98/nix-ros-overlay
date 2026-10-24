
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-real-common";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_real_common/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "56c63cb46e5401b5b2bc835ba5271199ae7f003bf4f86bc39df9186a90e6816c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Shared handler and ROS 2 interface abstractions for real Tobas hardware.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
