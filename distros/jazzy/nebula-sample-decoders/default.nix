
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoware-cmake, nebula-core-common, nebula-core-decoders, nebula-sample-common, ros-environment }:
buildRosPackage {
  pname = "ros-jazzy-nebula-sample-decoders";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/nebula-release/archive/release/jazzy/nebula_sample_decoders/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "24f64a8a05d21bf6afb308433ea23e92836a15cf4c8a83e3945d0741149323cf";
  };

  buildType = "ament_cmake";
  buildInputs = [ autoware-cmake ros-environment ];
  propagatedBuildInputs = [ nebula-core-common nebula-core-decoders nebula-sample-common ];
  nativeBuildInputs = [ autoware-cmake ros-environment ];

  meta = {
    description = "Nebula Sample Decoders Library";
    license = with lib.licenses; [ asl20 ];
  };
}
