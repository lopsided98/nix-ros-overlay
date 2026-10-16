
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-property-common, tobas-property-msgs, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-client";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_client/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "68a790e5d3e045ec36383aff3cbef73562e65e5faabd285abf9c2766b1b2a022";
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
