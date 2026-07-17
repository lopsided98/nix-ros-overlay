
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-auto, ament-cmake-gtest, geometry-msgs, mapoi-interfaces, rviz-common, rviz-default-plugins, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-mapoi-rviz-plugins";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/shimz-robotics/mapoi-release/archive/release/jazzy/mapoi_rviz_plugins/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "d30d06fc0f2b8fea9bc0df53857022ef814a0129095ba3d88c38f397969d53fa";
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
