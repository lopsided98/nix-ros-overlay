
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, costmap-cspace-msgs, planner-cspace-msgs, catkin, trajectory-tracker-msgs, map-organizer-msgs, safety-limiter-msgs }:
buildRosPackage {
  pname = "ros-melodic-neonavigation-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/at-wat/neonavigation_msgs-release/archive/release/melodic/neonavigation_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "72cf1e5ef7e9b0431705b47be4bfd14dfd9775b208ff62f1e98ba75c86b7551c";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ costmap-cspace-msgs planner-cspace-msgs trajectory-tracker-msgs map-organizer-msgs safety-limiter-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Message definitions for neonavigation package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
