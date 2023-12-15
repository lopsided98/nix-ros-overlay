
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-msgs";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_msgs/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "506e283e487c92b5dbe7c7b38fdb9ccbe2123cc28f4447ab24a958df0e07cd66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ clearpath-platform-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Metapackage for Clearapth messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
