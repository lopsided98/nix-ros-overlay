
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nav-msgs, rospy, sensor-msgs, std-msgs, tf, tf-conversions }:
buildRosPackage {
  pname = "ros-melodic-underwater-vehicle-dynamics";
  version = "1.4.2-r2";

  src = fetchurl {
    url = "https://github.com/uji-ros-pkg/underwater_simulation-release/archive/release/melodic/underwater_vehicle_dynamics/1.4.2-2.tar.gz";
    name = "1.4.2-2.tar.gz";
    sha256 = "5c5e774b45272b8d9cc3f73c652311e4e2325172c86bb10c3533b9abaa5c1d18";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ geometry-msgs nav-msgs rospy sensor-msgs std-msgs tf tf-conversions ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''An underwater dynamics module'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
