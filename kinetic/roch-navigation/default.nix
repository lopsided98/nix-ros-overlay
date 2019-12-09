
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, roch-bringup, frontier-exploration, map-server, roch-safety-controller, tf, catkin, base-local-planner, yocs-cmd-vel-mux, gmapping, nodelet, roscpp, move-base, amcl, roslaunch, navfn, dwa-local-planner }:
buildRosPackage {
  pname = "ros-kinetic-roch-navigation";
  version = "2.0.12";

  src = fetchurl {
    url = "https://github.com/SawYerRobotics-release/roch-release/archive/release/kinetic/roch_navigation/2.0.12-0.tar.gz";
    name = "2.0.12-0.tar.gz";
    sha256 = "31c11c2052c6f4a79055c484f992ee293031477f46ee34f6cbfc41338a71f792";
  };

  buildType = "catkin";
  buildInputs = [ sensor-msgs roslaunch tf roscpp ];
  propagatedBuildInputs = [ sensor-msgs roch-bringup frontier-exploration map-server roch-safety-controller tf base-local-planner yocs-cmd-vel-mux gmapping nodelet roscpp move-base amcl navfn dwa-local-planner ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Autonomous mapping and navigation demos for the SawYer Roch'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
