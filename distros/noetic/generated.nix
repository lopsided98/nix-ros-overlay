
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

self: super: {

 ackermann-msgs = self.callPackage ./ackermann-msgs {};

 ackermann-steering-controller = self.callPackage ./ackermann-steering-controller {};

 actionlib = self.callPackage ./actionlib {};

 actionlib-msgs = self.callPackage ./actionlib-msgs {};

 actionlib-tools = self.callPackage ./actionlib-tools {};

 actionlib-tutorials = self.callPackage ./actionlib-tutorials {};

 angles = self.callPackage ./angles {};

 audio-capture = self.callPackage ./audio-capture {};

 audio-common = self.callPackage ./audio-common {};

 audio-common-msgs = self.callPackage ./audio-common-msgs {};

 audio-play = self.callPackage ./audio-play {};

 base-local-planner = self.callPackage ./base-local-planner {};

 bond = self.callPackage ./bond {};

 bond-core = self.callPackage ./bond-core {};

 bondcpp = self.callPackage ./bondcpp {};

 bondpy = self.callPackage ./bondpy {};

 camera-calibration = self.callPackage ./camera-calibration {};

 camera-calibration-parsers = self.callPackage ./camera-calibration-parsers {};

 camera-info-manager = self.callPackage ./camera-info-manager {};

 can-msgs = self.callPackage ./can-msgs {};

 canopen-402 = self.callPackage ./canopen-402 {};

 canopen-chain-node = self.callPackage ./canopen-chain-node {};

 canopen-master = self.callPackage ./canopen-master {};

 canopen-motor-node = self.callPackage ./canopen-motor-node {};

 capabilities = self.callPackage ./capabilities {};

 carrot-planner = self.callPackage ./carrot-planner {};

 catkin = self.callPackage ./catkin {};

 class-loader = self.callPackage ./class-loader {};

 clear-costmap-recovery = self.callPackage ./clear-costmap-recovery {};

 cmake-modules = self.callPackage ./cmake-modules {};

 code-coverage = self.callPackage ./code-coverage {};

 combined-robot-hw = self.callPackage ./combined-robot-hw {};

 combined-robot-hw-tests = self.callPackage ./combined-robot-hw-tests {};

 common-msgs = self.callPackage ./common-msgs {};

 common-tutorials = self.callPackage ./common-tutorials {};

 compressed-depth-image-transport = self.callPackage ./compressed-depth-image-transport {};

 compressed-image-transport = self.callPackage ./compressed-image-transport {};

 control-msgs = self.callPackage ./control-msgs {};

 control-toolbox = self.callPackage ./control-toolbox {};

 controller-interface = self.callPackage ./controller-interface {};

 controller-manager = self.callPackage ./controller-manager {};

 controller-manager-msgs = self.callPackage ./controller-manager-msgs {};

 controller-manager-tests = self.callPackage ./controller-manager-tests {};

 convex-decomposition = self.callPackage ./convex-decomposition {};

 costmap-2d = self.callPackage ./costmap-2d {};

 costmap-converter = self.callPackage ./costmap-converter {};

 costmap-cspace = self.callPackage ./costmap-cspace {};

 costmap-cspace-msgs = self.callPackage ./costmap-cspace-msgs {};

 cpp-common = self.callPackage ./cpp-common {};

 depth-image-proc = self.callPackage ./depth-image-proc {};

 desktop = self.callPackage ./desktop {};

 desktop-full = self.callPackage ./desktop-full {};

 diagnostic-aggregator = self.callPackage ./diagnostic-aggregator {};

 diagnostic-analysis = self.callPackage ./diagnostic-analysis {};

 diagnostic-common-diagnostics = self.callPackage ./diagnostic-common-diagnostics {};

 diagnostic-msgs = self.callPackage ./diagnostic-msgs {};

 diagnostic-updater = self.callPackage ./diagnostic-updater {};

 diagnostics = self.callPackage ./diagnostics {};

 diff-drive-controller = self.callPackage ./diff-drive-controller {};

 dwa-local-planner = self.callPackage ./dwa-local-planner {};

 dynamic-edt-3d = self.callPackage ./dynamic-edt-3d {};

 dynamic-reconfigure = self.callPackage ./dynamic-reconfigure {};

 effort-controllers = self.callPackage ./effort-controllers {};

 eigen-stl-containers = self.callPackage ./eigen-stl-containers {};

 eigenpy = self.callPackage ./eigenpy {};

 executive-smach = self.callPackage ./executive-smach {};

 fake-localization = self.callPackage ./fake-localization {};

 filters = self.callPackage ./filters {};

 fkie-message-filters = self.callPackage ./fkie-message-filters {};

 fmi-adapter = self.callPackage ./fmi-adapter {};

 fmi-adapter-examples = self.callPackage ./fmi-adapter-examples {};

 force-torque-sensor-controller = self.callPackage ./force-torque-sensor-controller {};

 forward-command-controller = self.callPackage ./forward-command-controller {};

 four-wheel-steering-controller = self.callPackage ./four-wheel-steering-controller {};

 four-wheel-steering-msgs = self.callPackage ./four-wheel-steering-msgs {};

 gazebo-msgs = self.callPackage ./gazebo-msgs {};

 gazebo-plugins = self.callPackage ./gazebo-plugins {};

 gazebo-ros = self.callPackage ./gazebo-ros {};

 gazebo-ros-control = self.callPackage ./gazebo-ros-control {};

 gazebo-ros-pkgs = self.callPackage ./gazebo-ros-pkgs {};

 gencpp = self.callPackage ./gencpp {};

 geneus = self.callPackage ./geneus {};

 genlisp = self.callPackage ./genlisp {};

 genmsg = self.callPackage ./genmsg {};

 gennodejs = self.callPackage ./gennodejs {};

 genpy = self.callPackage ./genpy {};

 geodesy = self.callPackage ./geodesy {};

 geographic-info = self.callPackage ./geographic-info {};

 geographic-msgs = self.callPackage ./geographic-msgs {};

 geometry = self.callPackage ./geometry {};

 geometry2 = self.callPackage ./geometry2 {};

 geometry-msgs = self.callPackage ./geometry-msgs {};

 geometry-tutorials = self.callPackage ./geometry-tutorials {};

 gl-dependency = self.callPackage ./gl-dependency {};

 global-planner = self.callPackage ./global-planner {};

 gripper-action-controller = self.callPackage ./gripper-action-controller {};

 hardware-interface = self.callPackage ./hardware-interface {};

 hokuyo3d = self.callPackage ./hokuyo3d {};

 image-common = self.callPackage ./image-common {};

 image-geometry = self.callPackage ./image-geometry {};

 image-pipeline = self.callPackage ./image-pipeline {};

 image-proc = self.callPackage ./image-proc {};

 image-publisher = self.callPackage ./image-publisher {};

 image-rotate = self.callPackage ./image-rotate {};

 image-transport = self.callPackage ./image-transport {};

 image-transport-plugins = self.callPackage ./image-transport-plugins {};

 image-view = self.callPackage ./image-view {};

 imu-sensor-controller = self.callPackage ./imu-sensor-controller {};

 interactive-marker-tutorials = self.callPackage ./interactive-marker-tutorials {};

 interactive-markers = self.callPackage ./interactive-markers {};

 ivcon = self.callPackage ./ivcon {};

 joint-limits-interface = self.callPackage ./joint-limits-interface {};

 joint-state-controller = self.callPackage ./joint-state-controller {};

 joint-state-publisher = self.callPackage ./joint-state-publisher {};

 joint-state-publisher-gui = self.callPackage ./joint-state-publisher-gui {};

 joint-trajectory-controller = self.callPackage ./joint-trajectory-controller {};

 joystick-interrupt = self.callPackage ./joystick-interrupt {};

 jsk-common-msgs = self.callPackage ./jsk-common-msgs {};

 jsk-footstep-msgs = self.callPackage ./jsk-footstep-msgs {};

 jsk-gui-msgs = self.callPackage ./jsk-gui-msgs {};

 jsk-hark-msgs = self.callPackage ./jsk-hark-msgs {};

 laser-assembler = self.callPackage ./laser-assembler {};

 laser-filtering = self.callPackage ./laser-filtering {};

 laser-filters = self.callPackage ./laser-filters {};

 laser-geometry = self.callPackage ./laser-geometry {};

 laser-pipeline = self.callPackage ./laser-pipeline {};

 laser-proc = self.callPackage ./laser-proc {};

 libg2o = self.callPackage ./libg2o {};

 librviz-tutorial = self.callPackage ./librviz-tutorial {};

 map-laser = self.callPackage ./map-laser {};

 map-msgs = self.callPackage ./map-msgs {};

 map-organizer = self.callPackage ./map-organizer {};

 map-organizer-msgs = self.callPackage ./map-organizer-msgs {};

 map-server = self.callPackage ./map-server {};

 mavlink = self.callPackage ./mavlink {};

 mcl-3dl = self.callPackage ./mcl-3dl {};

 mcl-3dl-msgs = self.callPackage ./mcl-3dl-msgs {};

 media-export = self.callPackage ./media-export {};

 message-filters = self.callPackage ./message-filters {};

 message-generation = self.callPackage ./message-generation {};

 message-runtime = self.callPackage ./message-runtime {};

 mk = self.callPackage ./mk {};

 move-base = self.callPackage ./move-base {};

 move-base-msgs = self.callPackage ./move-base-msgs {};

 move-slow-and-clear = self.callPackage ./move-slow-and-clear {};

 mrpt2 = self.callPackage ./mrpt2 {};

 nav-core = self.callPackage ./nav-core {};

 nav-msgs = self.callPackage ./nav-msgs {};

 navfn = self.callPackage ./navfn {};

 navigation = self.callPackage ./navigation {};

 neonavigation = self.callPackage ./neonavigation {};

 neonavigation-common = self.callPackage ./neonavigation-common {};

 neonavigation-launch = self.callPackage ./neonavigation-launch {};

 neonavigation-msgs = self.callPackage ./neonavigation-msgs {};

 neonavigation-rviz-plugins = self.callPackage ./neonavigation-rviz-plugins {};

 nodelet = self.callPackage ./nodelet {};

 nodelet-core = self.callPackage ./nodelet-core {};

 nodelet-topic-tools = self.callPackage ./nodelet-topic-tools {};

 nodelet-tutorial-math = self.callPackage ./nodelet-tutorial-math {};

 obj-to-pointcloud = self.callPackage ./obj-to-pointcloud {};

 object-recognition-msgs = self.callPackage ./object-recognition-msgs {};

 octomap = self.callPackage ./octomap {};

 octomap-mapping = self.callPackage ./octomap-mapping {};

 octomap-msgs = self.callPackage ./octomap-msgs {};

 octomap-ros = self.callPackage ./octomap-ros {};

 octomap-server = self.callPackage ./octomap-server {};

 open-karto = self.callPackage ./open-karto {};

 openslam-gmapping = self.callPackage ./openslam-gmapping {};

 pcl-conversions = self.callPackage ./pcl-conversions {};

 pcl-msgs = self.callPackage ./pcl-msgs {};

 pcl-ros = self.callPackage ./pcl-ros {};

 perception = self.callPackage ./perception {};

 perception-pcl = self.callPackage ./perception-pcl {};

 planner-cspace = self.callPackage ./planner-cspace {};

 planner-cspace-msgs = self.callPackage ./planner-cspace-msgs {};

 pluginlib = self.callPackage ./pluginlib {};

 pluginlib-tutorials = self.callPackage ./pluginlib-tutorials {};

 polled-camera = self.callPackage ./polled-camera {};

 posedetection-msgs = self.callPackage ./posedetection-msgs {};

 position-controllers = self.callPackage ./position-controllers {};

 pyquaternion = self.callPackage ./pyquaternion {};

 python-qt-binding = self.callPackage ./python-qt-binding {};

 qt-dotgraph = self.callPackage ./qt-dotgraph {};

 qt-gui = self.callPackage ./qt-gui {};

 qt-gui-app = self.callPackage ./qt-gui-app {};

 qt-gui-core = self.callPackage ./qt-gui-core {};

 qt-gui-cpp = self.callPackage ./qt-gui-cpp {};

 qt-gui-py-common = self.callPackage ./qt-gui-py-common {};

 qwt-dependency = self.callPackage ./qwt-dependency {};

 random-numbers = self.callPackage ./random-numbers {};

 rc-common-msgs = self.callPackage ./rc-common-msgs {};

 rc-dynamics-api = self.callPackage ./rc-dynamics-api {};

 rc-genicam-api = self.callPackage ./rc-genicam-api {};

 rcdiscover = self.callPackage ./rcdiscover {};

 realtime-tools = self.callPackage ./realtime-tools {};

 resource-retriever = self.callPackage ./resource-retriever {};

 robot = self.callPackage ./robot {};

 ros = self.callPackage ./ros {};

 ros-base = self.callPackage ./ros-base {};

 ros-canopen = self.callPackage ./ros-canopen {};

 ros-comm = self.callPackage ./ros-comm {};

 ros-control = self.callPackage ./ros-control {};

 ros-controllers = self.callPackage ./ros-controllers {};

 ros-core = self.callPackage ./ros-core {};

 ros-environment = self.callPackage ./ros-environment {};

 ros-tutorials = self.callPackage ./ros-tutorials {};

 rosauth = self.callPackage ./rosauth {};

 rosbag = self.callPackage ./rosbag {};

 rosbag-migration-rule = self.callPackage ./rosbag-migration-rule {};

 rosbag-storage = self.callPackage ./rosbag-storage {};

 rosbash = self.callPackage ./rosbash {};

 rosboost-cfg = self.callPackage ./rosboost-cfg {};

 rosbuild = self.callPackage ./rosbuild {};

 rosclean = self.callPackage ./rosclean {};

 rosconsole = self.callPackage ./rosconsole {};

 rosconsole-bridge = self.callPackage ./rosconsole-bridge {};

 roscpp = self.callPackage ./roscpp {};

 roscpp-core = self.callPackage ./roscpp-core {};

 roscpp-serialization = self.callPackage ./roscpp-serialization {};

 roscpp-traits = self.callPackage ./roscpp-traits {};

 roscpp-tutorials = self.callPackage ./roscpp-tutorials {};

 roscreate = self.callPackage ./roscreate {};

 rosdiagnostic = self.callPackage ./rosdiagnostic {};

 rosgraph = self.callPackage ./rosgraph {};

 rosgraph-msgs = self.callPackage ./rosgraph-msgs {};

 roslang = self.callPackage ./roslang {};

 roslaunch = self.callPackage ./roslaunch {};

 roslib = self.callPackage ./roslib {};

 roslint = self.callPackage ./roslint {};

 roslisp = self.callPackage ./roslisp {};

 roslz4 = self.callPackage ./roslz4 {};

 rosmake = self.callPackage ./rosmake {};

 rosmaster = self.callPackage ./rosmaster {};

 rosmsg = self.callPackage ./rosmsg {};

 rosnode = self.callPackage ./rosnode {};

 rosout = self.callPackage ./rosout {};

 rospack = self.callPackage ./rospack {};

 rosparam = self.callPackage ./rosparam {};

 rospy = self.callPackage ./rospy {};

 rospy-tutorials = self.callPackage ./rospy-tutorials {};

 rosservice = self.callPackage ./rosservice {};

 rostest = self.callPackage ./rostest {};

 rostime = self.callPackage ./rostime {};

 rostopic = self.callPackage ./rostopic {};

 rosunit = self.callPackage ./rosunit {};

 roswtf = self.callPackage ./roswtf {};

 rotate-recovery = self.callPackage ./rotate-recovery {};

 rqt = self.callPackage ./rqt {};

 rqt-action = self.callPackage ./rqt-action {};

 rqt-bag = self.callPackage ./rqt-bag {};

 rqt-bag-plugins = self.callPackage ./rqt-bag-plugins {};

 rqt-common-plugins = self.callPackage ./rqt-common-plugins {};

 rqt-console = self.callPackage ./rqt-console {};

 rqt-controller-manager = self.callPackage ./rqt-controller-manager {};

 rqt-dep = self.callPackage ./rqt-dep {};

 rqt-graph = self.callPackage ./rqt-graph {};

 rqt-gui = self.callPackage ./rqt-gui {};

 rqt-gui-cpp = self.callPackage ./rqt-gui-cpp {};

 rqt-gui-py = self.callPackage ./rqt-gui-py {};

 rqt-image-view = self.callPackage ./rqt-image-view {};

 rqt-joint-trajectory-controller = self.callPackage ./rqt-joint-trajectory-controller {};

 rqt-launch = self.callPackage ./rqt-launch {};

 rqt-logger-level = self.callPackage ./rqt-logger-level {};

 rqt-moveit = self.callPackage ./rqt-moveit {};

 rqt-msg = self.callPackage ./rqt-msg {};

 rqt-nav-view = self.callPackage ./rqt-nav-view {};

 rqt-plot = self.callPackage ./rqt-plot {};

 rqt-pose-view = self.callPackage ./rqt-pose-view {};

 rqt-publisher = self.callPackage ./rqt-publisher {};

 rqt-py-common = self.callPackage ./rqt-py-common {};

 rqt-py-console = self.callPackage ./rqt-py-console {};

 rqt-reconfigure = self.callPackage ./rqt-reconfigure {};

 rqt-robot-dashboard = self.callPackage ./rqt-robot-dashboard {};

 rqt-robot-plugins = self.callPackage ./rqt-robot-plugins {};

 rqt-robot-steering = self.callPackage ./rqt-robot-steering {};

 rqt-runtime-monitor = self.callPackage ./rqt-runtime-monitor {};

 rqt-rviz = self.callPackage ./rqt-rviz {};

 rqt-service-caller = self.callPackage ./rqt-service-caller {};

 rqt-shell = self.callPackage ./rqt-shell {};

 rqt-srv = self.callPackage ./rqt-srv {};

 rqt-tf-tree = self.callPackage ./rqt-tf-tree {};

 rqt-top = self.callPackage ./rqt-top {};

 rqt-topic = self.callPackage ./rqt-topic {};

 rqt-web = self.callPackage ./rqt-web {};

 rviz = self.callPackage ./rviz {};

 rviz-plugin-tutorials = self.callPackage ./rviz-plugin-tutorials {};

 rviz-python-tutorial = self.callPackage ./rviz-python-tutorial {};

 safety-limiter = self.callPackage ./safety-limiter {};

 safety-limiter-msgs = self.callPackage ./safety-limiter-msgs {};

 self-test = self.callPackage ./self-test {};

 sensor-msgs = self.callPackage ./sensor-msgs {};

 shape-msgs = self.callPackage ./shape-msgs {};

 simulators = self.callPackage ./simulators {};

 slam-karto = self.callPackage ./slam-karto {};

 smach = self.callPackage ./smach {};

 smach-msgs = self.callPackage ./smach-msgs {};

 smach-ros = self.callPackage ./smach-ros {};

 smclib = self.callPackage ./smclib {};

 socketcan-bridge = self.callPackage ./socketcan-bridge {};

 socketcan-interface = self.callPackage ./socketcan-interface {};

 sparse-bundle-adjustment = self.callPackage ./sparse-bundle-adjustment {};

 speech-recognition-msgs = self.callPackage ./speech-recognition-msgs {};

 stage = self.callPackage ./stage {};

 stage-ros = self.callPackage ./stage-ros {};

 std-msgs = self.callPackage ./std-msgs {};

 std-srvs = self.callPackage ./std-srvs {};

 stereo-image-proc = self.callPackage ./stereo-image-proc {};

 stereo-msgs = self.callPackage ./stereo-msgs {};

 test-diagnostic-aggregator = self.callPackage ./test-diagnostic-aggregator {};

 tf = self.callPackage ./tf {};

 tf2 = self.callPackage ./tf2 {};

 tf2-bullet = self.callPackage ./tf2-bullet {};

 tf2-eigen = self.callPackage ./tf2-eigen {};

 tf2-msgs = self.callPackage ./tf2-msgs {};

 tf2-py = self.callPackage ./tf2-py {};

 tf2-ros = self.callPackage ./tf2-ros {};

 tf2-tools = self.callPackage ./tf2-tools {};

 theora-image-transport = self.callPackage ./theora-image-transport {};

 topic-tools = self.callPackage ./topic-tools {};

 track-odometry = self.callPackage ./track-odometry {};

 trajectory-msgs = self.callPackage ./trajectory-msgs {};

 trajectory-tracker = self.callPackage ./trajectory-tracker {};

 trajectory-tracker-msgs = self.callPackage ./trajectory-tracker-msgs {};

 trajectory-tracker-rviz-plugins = self.callPackage ./trajectory-tracker-rviz-plugins {};

 transmission-interface = self.callPackage ./transmission-interface {};

 turtle-actionlib = self.callPackage ./turtle-actionlib {};

 turtle-tf = self.callPackage ./turtle-tf {};

 turtle-tf2 = self.callPackage ./turtle-tf2 {};

 turtlesim = self.callPackage ./turtlesim {};

 unique-id = self.callPackage ./unique-id {};

 unique-identifier = self.callPackage ./unique-identifier {};

 urdf = self.callPackage ./urdf {};

 urdf-geometry-parser = self.callPackage ./urdf-geometry-parser {};

 urdf-parser-plugin = self.callPackage ./urdf-parser-plugin {};

 urdf-sim-tutorial = self.callPackage ./urdf-sim-tutorial {};

 urdf-tutorial = self.callPackage ./urdf-tutorial {};

 urdfdom-py = self.callPackage ./urdfdom-py {};

 urg-stamped = self.callPackage ./urg-stamped {};

 uuid-msgs = self.callPackage ./uuid-msgs {};

 velocity-controllers = self.callPackage ./velocity-controllers {};

 vision-opencv = self.callPackage ./vision-opencv {};

 visualization-marker-tutorials = self.callPackage ./visualization-marker-tutorials {};

 visualization-msgs = self.callPackage ./visualization-msgs {};

 visualization-tutorials = self.callPackage ./visualization-tutorials {};

 viz = self.callPackage ./viz {};

 voxel-grid = self.callPackage ./voxel-grid {};

 warehouse-ros = self.callPackage ./warehouse-ros {};

 webkit-dependency = self.callPackage ./webkit-dependency {};

 xacro = self.callPackage ./xacro {};

 xmlrpcpp = self.callPackage ./xmlrpcpp {};

 ypspur = self.callPackage ./ypspur {};

 ypspur-ros = self.callPackage ./ypspur-ros {};

}
