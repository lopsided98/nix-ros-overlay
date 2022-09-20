
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, mesh-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-transform";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_transform/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "f3944e4d9cd70f65153df38d521afdaecd9e38e888eb4e9c9571676565fd92b6";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ eigen geometry-msgs mesh-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Methods to transform mesh_msgs'';
    license = with lib.licenses; [ bsd3 ];
  };
}
