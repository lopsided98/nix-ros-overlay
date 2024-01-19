
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-gz";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_generator_gz/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "c3c1130cb0a1f237314de63e3e59be67a915b6ef79214082cbf35f16ae0490ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ clearpath-config clearpath-generator-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Clearpath Gazebo Generator'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
