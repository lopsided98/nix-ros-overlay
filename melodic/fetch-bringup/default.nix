
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ps3joy, depth-image-proc, fetch-open-auto-dock, fetch-drivers, image-proc, sensor-msgs, joy, catkin, fetch-moveit-config, openni2-launch, fetch-teleop, robot-state-publisher, fetch-description, fetch-navigation, graft, sick-tim, diagnostic-aggregator }:
buildRosPackage {
  pname = "ros-melodic-fetch-bringup";
  version = "0.8.6";

  src = fetchurl {
    url = https://github.com/fetchrobotics-gbp/fetch_robots-release/archive/release/melodic/fetch_bringup/0.8.6-0.tar.gz;
    sha256 = "7226d4b1fd3e2bb93192fa270d0d1a82cabd74c3dbdbada0cf5620e5ae3c07de";
  };

  propagatedBuildInputs = [ ps3joy depth-image-proc fetch-open-auto-dock fetch-drivers sensor-msgs joy fetch-description fetch-moveit-config fetch-navigation robot-state-publisher fetch-teleop graft openni2-launch image-proc sick-tim diagnostic-aggregator ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Bringup for fetch'';
    #license = lib.licenses.Proprietary;
  };
}
