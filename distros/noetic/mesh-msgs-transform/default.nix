
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometry-msgs, mesh-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-mesh-msgs-transform";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mesh-tools/archive/release/noetic/mesh_msgs_transform/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "0bb89df1f78c87d2b2d6107963c71189086e044a0ca0bfb2bafbe72321c064a3";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ eigen geometry-msgs mesh-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Methods to transform mesh_msgs'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
