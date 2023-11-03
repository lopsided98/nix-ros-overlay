
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clearpath-configuration-msgs, clearpath-control-msgs, clearpath-dock-msgs, clearpath-localization-msgs, clearpath-mission-manager-msgs, clearpath-mission-scheduler-msgs, clearpath-navigation-msgs, clearpath-platform-msgs, clearpath-safety-msgs, dingo-msgs, husky-msgs, jackal-msgs, ridgeback-msgs, warthog-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-msgs";
  version = "0.9.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_msgs/0.9.4-1.tar.gz";
    name = "0.9.4-1.tar.gz";
    sha256 = "619e19f54bb97a67cb94ade14e543e4def1b9f7ff34f08f07b1b53a5ca394aa6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clearpath-configuration-msgs clearpath-control-msgs clearpath-dock-msgs clearpath-localization-msgs clearpath-mission-manager-msgs clearpath-mission-scheduler-msgs clearpath-navigation-msgs clearpath-platform-msgs clearpath-safety-msgs dingo-msgs husky-msgs jackal-msgs ridgeback-msgs warthog-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for Clearapth messages.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
