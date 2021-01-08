
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, mesh-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-transform";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_transform/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "aa1f0d44f36bffd971f57edfa10ae9523774dd81a8304381292c349e434ec69f";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs mesh-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Methods to transform mesh_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
