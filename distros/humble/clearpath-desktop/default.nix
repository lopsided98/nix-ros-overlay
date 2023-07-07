
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "0.0.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/0.0.1-1.tar.gz";
    name = "0.0.1-1.tar.gz";
    sha256 = "30e0df684953eace8bcf2fe3a19040048d7189d05c96e8f4d4bd889e3e28bb86";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for working with Clearpath Platforms from a ROS 2 desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
