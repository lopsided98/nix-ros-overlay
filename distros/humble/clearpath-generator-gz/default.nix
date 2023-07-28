
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, clearpath-config, clearpath-generator-common }:
buildRosPackage {
  pname = "ros-humble-clearpath-generator-gz";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_simulator-release/archive/release/humble/clearpath_generator_gz/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "a5f41a7697cde6a75a7acafb4226f857b8017e771bebada9cc7d4247de1de601";
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
