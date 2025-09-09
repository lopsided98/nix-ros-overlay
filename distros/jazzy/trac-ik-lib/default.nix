
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, geometry-msgs, kdl-parser, nlopt, pkg-config, rclcpp, urdf }:
buildRosPackage {
  pname = "ros-jazzy-trac-ik-lib";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/trac_ik-release/archive/release/jazzy/trac_ik_lib/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "c99b881e0a722f2cdaa23a7459dbe3c5a3343486c09bf2eaaa20dc50d2f3cec1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen geometry-msgs kdl-parser nlopt pkg-config rclcpp urdf ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "TRAC-IK is a faster, significantly more reliable drop-in replacement for
    KDL's pseudoinverse Jacobian solver.

    The TRAC-IK library has a very similar API to KDL's IK solver calls,
    except that the user passes a maximum time instead of a maximum number of
    search iterations.  Additionally, TRAC-IK allows for error tolerances to
    be set independently for each Cartesian dimension (x,y,z,roll,pitch.yaw).";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
