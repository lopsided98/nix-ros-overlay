
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-kilted-ecl-exceptions";
  version = "1.2.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/kilted/ecl_exceptions/1.2.1-5.tar.gz";
    name = "1.2.1-5.tar.gz";
    sha256 = "a408fbe94953db6501c5ae04b6afd57d5e215f1c5d9a5cbf66938f1013b78400";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ecl-build ];
  propagatedBuildInputs = [ ecl-config ecl-errors ecl-license ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "Template based exceptions - these are simple and practical
     and avoid the proliferation of exception types. Although not
     syntatactically ideal, it is convenient and eminently practical.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
