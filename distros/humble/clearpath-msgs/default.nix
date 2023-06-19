
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, clearpath-platform-msgs }:
buildRosPackage {
  pname = "ros-humble-clearpath-msgs";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/humble/clearpath_msgs/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "e988c3fdb73dd7c36ee762efdb7c41dbdf3d939f14360e648e6af5aa73901f0c";
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
