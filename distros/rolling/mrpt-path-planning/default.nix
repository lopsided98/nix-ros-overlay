
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt2, mvsim }:
buildRosPackage {
  pname = "ros-rolling-mrpt-path-planning";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/rolling/mrpt_path_planning/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "2ff0915bc79287cef68e4772187891560515cf5dff3a79a98fd11be20fe1229b";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt2 mvsim ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Path planning and navigation algorithms for robots/vehicles moving on planar environments. This library builds upon mrpt-nav and the theory behind PTGs to generate libraries of &quot;motion primitives&quot; for vehicles with arbitrary shape and realistic kinematics and dynamics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
