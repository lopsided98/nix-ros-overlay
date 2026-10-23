
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, std-srvs, tobas-drone-msgs-adapter, tobas-msgs-adapter, tobas-node, tobas-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rotor-anomaly-detection";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rotor_anomaly_detection/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "6a095771feb99394fe4ecf35a4c2cdaaef316d8ed2b30ca31e454149161dec3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ std-srvs tobas-drone-msgs-adapter tobas-msgs-adapter tobas-node tobas-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that detects rotor anomalies from rotor state and liveliness data.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
