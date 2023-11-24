
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clearpath-configuration-msgs, clearpath-control-msgs, clearpath-dock-msgs, clearpath-localization-msgs, clearpath-mission-manager-msgs, clearpath-mission-scheduler-msgs, clearpath-navigation-msgs, clearpath-platform-msgs, clearpath-safety-msgs, dingo-msgs, husky-msgs, jackal-msgs, ridgeback-msgs, warthog-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-msgs";
  version = "0.9.5-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/noetic/clearpath_msgs/0.9.5-1.tar.gz";
    name = "0.9.5-1.tar.gz";
    sha256 = "c4297a23ebefa32f90b6e9cacaa30a2b2299141a5ac5a2d540a485f3dec51634";
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
