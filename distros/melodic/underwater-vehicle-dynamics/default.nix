
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rospy, sensor-msgs, std-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-underwater-vehicle-dynamics";
  version = "1.4.2-r3";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/underwater_vehicle_dynamics/1.4.2-3.tar.gz";
    name = "1.4.2-3.tar.gz";
    sha256 = "614c6318a07c0fb3a1db67f93c96e24feb3cadeabe2f5d77a31954d88926e57d";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs rospy sensor-msgs std-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An underwater dynamics module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
