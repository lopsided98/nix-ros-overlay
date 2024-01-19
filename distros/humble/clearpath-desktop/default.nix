
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "24e5572aba43dbddd2cc28769c0fc0ae449b57367ca54d82cc3e55bf1e9a5925";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-config-live clearpath-platform-msgs clearpath-viz ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Packages for working with Clearpath Platforms from a ROS 2 desktop.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
