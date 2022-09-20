
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, leo, leo-viz }:
buildRosPackage {
  pname = "ros-noetic-leo-desktop";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/noetic/leo_desktop/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "55ac702284d3099a5989caed3caf43508e17de27a8dc1a58334df1e394144391";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ leo leo-viz ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage of software for operating Leo Rover from ROS desktop'';
    license = with lib.licenses; [ mit ];
  };
}
