
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-gz";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_generator_gz/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "9a5afe4f2fa8f02c0c73b69b1a8574e7eff6fe6e5cc0b7021b5cc6bad0ba8b89";
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
