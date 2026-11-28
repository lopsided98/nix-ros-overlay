
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-index-cpp, geographiclib, pkg-config, tobas-std-tools }:
buildRosPackage {
  pname = "ros-jazzy-tobas-geographic";
  version = "2.16.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_geographic/2.16.10-1.tar.gz";
    name = "2.16.10-1.tar.gz";
    sha256 = "d711ae5128dd9a95ed8b78cf52906c419b450df908d223e0392aa17f08096388";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pkg-config ];
  propagatedBuildInputs = [ ament-index-cpp geographiclib tobas-std-tools ];
  nativeBuildInputs = [ ament-cmake pkg-config ];

  meta = {
    description = "Geographic coordinate and geomagnetic field calculations backed by GeographicLib.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
