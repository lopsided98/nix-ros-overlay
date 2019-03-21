
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, unique-id, catkin, yocs-msgs, world-canvas-client-py, uuid-msgs, world-canvas-client-cpp, nav-msgs, world-canvas-msgs, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-world-canvas-client-examples";
  version = "0.2.0";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/world_canvas_libs-release/archive/release/kinetic/world_canvas_client_examples/0.2.0-0.tar.gz;
    sha256 = "60e0e0cb674e7847d4839ecc04f037597deb885e3c49b265f00e924efe898cc8";
  };

  propagatedBuildInputs = [ uuid-msgs world-canvas-client-cpp nav-msgs unique-id world-canvas-msgs roscpp yocs-msgs world-canvas-client-py ];
  nativeBuildInputs = [ uuid-msgs world-canvas-client-cpp nav-msgs unique-id world-canvas-msgs catkin roscpp yocs-msgs ];

  meta = {
    description = ''Examples showing how to use C++ and Python client libraries to access semantic
    maps within the world canvas framework.'';
    #license = lib.licenses.BSD;
  };
}
