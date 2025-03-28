
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, ecl-build, ecl-config, ecl-errors, ecl-license }:
buildRosPackage {
  pname = "ros-humble-ecl-exceptions";
  version = "1.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecl_core-release/archive/release/humble/ecl_exceptions/1.2.1-1.tar.gz";
    name = "1.2.1-1.tar.gz";
    sha256 = "299bd0f957594dd420c9fc3b5f9086486ba6fd0a0a43ef323c868b8cd580abe2";
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
