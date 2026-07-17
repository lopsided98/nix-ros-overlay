
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, mapoi-interfaces, rviz-common, rviz-default-plugins, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-humble-mapoi-rviz-plugins";
  version = "0.6.0-r2";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/humble/mapoi_rviz_plugins/0.6.0-2.tar.gz";
    name = "0.6.0-2.tar.gz";
    sha256 = "8e730ccf4cb09fe53c20fd656ebd271e344abdc1fac0fb08351aa2b63ceab75d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-auto geometry-msgs mapoi-interfaces rviz-common rviz-default-plugins std-srvs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Rviz2 plugins for mapoi";
    license = with lib.licenses; [ mit ];
  };
}
