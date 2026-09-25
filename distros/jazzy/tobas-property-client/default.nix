
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-property-common, tobas-property-msgs, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-client";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_client/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "5994d0afa41961f5b2d688e4548accc9c61ee7979bbdb10fdd6311cd4e5a4ffd";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ std-srvs tobas-property-common tobas-property-msgs tobas-ros2-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Client library for accessing typed Tobas properties over ROS 2 services.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
