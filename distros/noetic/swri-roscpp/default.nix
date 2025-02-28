
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, diagnostic-updater, dynamic-reconfigure, gtest, marti-common-msgs, marti-introspection-msgs, message-generation, message-runtime, nav-msgs, pkg-config, roscpp, rostest, rosunit, std-msgs, std-srvs, yaml-cpp }:
buildRosPackage {
  pname = "ros-noetic-swri-roscpp";
  version = "2.15.4-r1";

  src = fetchurl {
    url = "https://github.com/swri-robotics-gbp/marti_common-release/archive/release/noetic/swri_roscpp/2.15.4-1.tar.gz";
    name = "2.15.4-1.tar.gz";
    sha256 = "df39a498255c612b420c344649a3c78954116a5247d043745d52750505324269";
  };

  buildType = "catkin";
  buildInputs = [ catkin pkg-config ];
  checkInputs = [ gtest message-generation message-runtime rostest rosunit ];
  propagatedBuildInputs = [ boost diagnostic-updater dynamic-reconfigure marti-common-msgs marti-introspection-msgs nav-msgs roscpp std-msgs std-srvs yaml-cpp ];
  nativeBuildInputs = [ catkin pkg-config ];

  meta = {
    description = "Enhancements to roscpp functionality to reduce boilerplate code and implement common patterns.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
