
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, mesh-msgs, tf }:
buildRosPackage {
  pname = "ros-melodic-mesh-msgs-transform";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/melodic/mesh_msgs_transform/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "774eb5801a209f2939d76b1d058112b2472405fa5790d28c7e9bcf4375e0810d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs mesh-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Methods to transform mesh_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
