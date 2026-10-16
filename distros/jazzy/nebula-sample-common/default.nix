
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-decoders, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-sample-common";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_sample_common/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "4876ed76872f790c283a5f989341c256b978ff90abf8719a4b20ffb8d7ebf561";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-decoders ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Sample Common Libraries and Headers";
    license = with lib.licenses; [ asl20 ];
  };
}
