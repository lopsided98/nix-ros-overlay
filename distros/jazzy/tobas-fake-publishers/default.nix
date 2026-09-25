
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-constants, tobas-msgs-adapter, tobas-node }:
buildRosPackage {
  pname = "ros-jazzy-tobas-fake-publishers";
  version = "2.16.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_fake_publishers/2.16.2-2.tar.gz";
    name = "2.16.2-2.tar.gz";
    sha256 = "085a3ce34405fff3a9ed93b600aae7c44e0586225e5ac8d76501c44723e5d039";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-constants tobas-msgs-adapter tobas-node ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Test nodes that publish simulated battery, GNSS, and RC input data.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
