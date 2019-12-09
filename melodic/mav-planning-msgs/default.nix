
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, trajectory-msgs, sensor-msgs, message-generation, geometry-msgs, std-msgs, cmake-modules, catkin, mav-msgs, eigen, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-mav-planning-msgs";
  version = "3.3.2";

  src = fetchurl {
    url = "https://github.com/ethz-asl/mav_comm-release/archive/release/melodic/mav_planning_msgs/3.3.2-0.tar.gz";
    name = "3.3.2-0.tar.gz";
    sha256 = "54bf3cce82bd9924dc58e2cd95da0314127ef73818f625b56fb687ff0fe694d0";
  };

  buildType = "catkin";
  buildInputs = [ trajectory-msgs sensor-msgs geometry-msgs message-runtime std-msgs cmake-modules mav-msgs eigen message-generation ];
  propagatedBuildInputs = [ trajectory-msgs sensor-msgs geometry-msgs message-runtime std-msgs cmake-modules mav-msgs eigen message-generation ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages specific to MAV planning, especially polynomial planning.'';
    license = with lib.licenses; [ asl20 ];
  };
}
