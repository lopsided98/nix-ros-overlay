
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-config-live, clearpath-platform-msgs, clearpath-viz }:
buildRosPackage {
  pname = "ros-humble-clearpath-desktop";
  version = "0.1.1-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_desktop-release/archive/release/humble/clearpath_desktop/0.1.1-1.tar.gz";
    name = "0.1.1-1.tar.gz";
    sha256 = "88e2075c1b5e179c9999df7371847f7bef79110741e7e83a3cbb76369aacf613";
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
