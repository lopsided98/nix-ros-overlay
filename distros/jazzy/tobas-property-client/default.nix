
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-property-common, tobas-property-msgs, tobas-ros2-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-property-client";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_property_client/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "ecc5de23fb757c335f1778148ae9efccb21d4b0513fe8c03bccd24a35c88193b";
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
